# Time::DATE_FORMATS.merge!({ db: '%Y-%m-%d %H:%M:%S.%3N' })
# Time::DATE_FORMATS[:to_milliseconds] = ->(time) { time.to_f * 1000 }
# Time::DATE_FORMATS.merge!(:to_milliseconds)