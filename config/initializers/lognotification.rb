ActiveSupport::Notifications.subscribe("process_action.action_controller") do |name, start, finish, id, payload|
  #["process_action.action_controller", 0.109161, "9ecf6f39160896d40130", {:controller=>"MysqltestController", :action=>"index", :params=>{"action"=>"index", "controller"=>"mysqltest"}, :format=>:html, :method=>"GET", :path=>"/mysqltest", :status=>200, :view_runtime=>44.013, :db_runtime=>5.72}
  logger = Log4r::Logger['rails']
  time_in_ms = ((finish - start).to_f * 100000).round / 100.0

  controller_format = "@method @status @path @duration"

  if !payload[:exception].nil? || payload[:status] == 500
    #["process_action.action_controller", 0.033505, "b4ebe16ef3da4c5eb902", {:controller=>"MongotestController", :action=>"index", :params=>{"action"=>"index", "controller"=>"mongotest"}, :format=>:html, :method=>"GET", :path=>"/mongotest", :exception=>["Mongoid::Errors::DocumentNotFound", "\nPro
    logger.error { 
      message = controller_format.clone
      message.sub!(/@status/, payload[:status].to_s)
      message.sub!(/@method/, payload[:method])
      message.sub!(/@path/, payload[:path])
      message.sub!(/@duration/, time_in_ms.to_s)
      message += " EXCEPTION: #{payload[:exception]}"
      message
    }
  end

  if payload[:status] != 200 && payload[:status] != 500 && payload[:exception].nil?
    logger.warn { 
      message = controller_format.clone
      message.sub!(/@status/, payload[:status].to_s)
      message.sub!(/@method/, payload[:method])
      message.sub!(/@path/, payload[:path])
      message.sub!(/@duration/, time_in_ms.to_s)
      message += " EXCEPTION: #{payload[:exception]}"
      message
    }
  end

  if payload[:status] == 200 && time_in_ms >= 2000
    logger.warn { 
      message = controller_format.clone
      message.sub!(/@status/, payload[:status].to_s)
      message.sub!(/@method/, payload[:method])
      message.sub!(/@path/, payload[:path])
      message.sub!(/@duration/, time_in_ms.to_s)
      message
    }
  end

  if payload[:status] == 200 && time_in_ms < 2000
    logger.info { 
      message = controller_format.clone
      message.sub!(/@status/, payload[:status].to_s)
      message.sub!(/@method/, payload[:method])
      message.sub!(/@path/, payload[:path])
      message.sub!(/@duration/, time_in_ms.to_s)
      message
    }
  end

  logger.params { "PARAMS: #{payload[:params].to_json }" }
  logger.debug {
    db = (payload[:db_runtime] * 100).round/100.0 rescue "-"
    view = (payload[:view_runtime] * 100).round/100.0 rescue "-"
    "TIMING[ms]: sum:#{time_in_ms.to_s} db:#{db} view:#{view}" 
  }

end


ActiveSupport::Notifications.subscribe "sql.active_record" do |name, start, finish, id, payload|
  logger = Log4r::Logger["mysql"] 
  logger.info { payload[:sql] }
end


ActiveSupport::Notifications.subscribe "process_action.exception_object" do |name, start, finish, id, payload|
  logger = Log4r::Logger['rails']
  logger.exception { "msg:#{payload[:message]} - inspect:#{payload[:inspect]} - backtrace:#{payload[:backtrace].to_json}" }
end



# ActiveSupport::Notifications.subscribe "process_action.action_controller" do |name, start, finish, id, payload|
ActiveSupport::Notifications.subscribe  do |name, start, finish, id, payload|
  # Log4r::Logger['development'].error([name, (finish-start).to_f, id, payload])
end

#Route Mongoid loggers to Log4r
Mongoid.logger = Log4r::Logger['mongo']
Moped.logger = Log4r::Logger['mongo']

Log4r::Logger['rails'].info "LAUNCH worker"
