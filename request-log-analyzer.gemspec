Gem::Specification.new do |s|
  s.name    = "request-log-analyzer"
  
  # Do not set the version and date field manually, this is done by the release script
  s.version = "1.5.1"
  s.date    = "2009-11-19"

  s.rubyforge_project = 'r-l-a'

  s.bindir             = 'bin'
  s.executables        = ['request-log-analyzer']
  s.default_executable = 'request-log-analyzer'

  s.summary     = "A command line tool to analyze request logs for Apache, Rails, Merb and other web application servers"
  s.description = <<-eos
    Request log analyzer's purpose is to find ot how your web application is being used and to focus your optimization efforts.
    This tool will parse all requests in the application's log file and aggregate the information. Once it is finished parsing
    the log file(s), it will show the requests that take op most server time using various metrics. It can also insert all
    parsed request information into a database so you can roll your own analysis. It supports Rails- and Merb-based applications
    and Apache access log files out of the box, but file formats of other applications can easily be supported by supplying an
    easy to write log file format definition.
  eos

  s.rdoc_options << '--title' << s.name << '--main' << 'README.rdoc' << '--line-numbers' << '--inline-source'
  s.extra_rdoc_files = ['README.rdoc']

  s.requirements << "To use the database inserter, ActiveRecord and an appropriate database adapter are required."

  s.add_development_dependency('rspec',    '>= 1.2.4')
  s.add_development_dependency('git',      '>= 1.1.0')

  s.authors  = ['Willem van Bergen', 'Bart ten Brinke']
  s.email    = ['willem@railsdoctors.com', 'bart@railsdoctors.com']
  s.homepage = 'http://railsdoctors.com'

  # The files and test_files directives are set automatically by the release script.
  # Do not change them by hand, but make sure to add the files to the git repository.
  s.files      = %w(lib/request_log_analyzer/output/html.rb spec/unit/tracker/hourly_spread_spec.rb DESIGN.rdoc spec/fixtures/rails_unordered.log spec/fixtures/multiple_files_1.log lib/request_log_analyzer/database/source.rb README.rdoc spec/unit/file_format/amazon_s3_format_spec.rb lib/request_log_analyzer/file_format/rails_development.rb spec/fixtures/rails_22.log spec/fixtures/test_order.log spec/unit/database/base_class_spec.rb lib/request_log_analyzer/database/connection.rb lib/request_log_analyzer/aggregator.rb spec/fixtures/decompression.log lib/request_log_analyzer/file_format/apache.rb spec/fixtures/decompression.log.gz lib/request_log_analyzer/tracker/frequency.rb lib/request_log_analyzer/tracker/duration.rb tasks/github-gem.rake .gitignore spec/unit/filter/filter_spec.rb spec/lib/macros.rb spec/spec_helper.rb spec/unit/tracker/count_tracker_spec.rb spec/fixtures/decompression.log.bz2 spec/unit/database/connection_spec.rb lib/request_log_analyzer/filter.rb spec/integration/scout_spec.rb spec/fixtures/test_file_format.log lib/request_log_analyzer/tracker/traffic.rb spec/unit/file_format/merb_format_spec.rb spec/unit/file_format/format_autodetection_spec.rb spec/unit/filter/timespan_filter_spec.rb spec/unit/file_format/file_format_api_spec.rb lib/request_log_analyzer/filter/field.rb lib/request_log_analyzer/file_format/merb.rb lib/request_log_analyzer/filter/anonymize.rb lib/request_log_analyzer/file_format/amazon_s3.rb lib/cli/database_console.rb spec/integration/mailer_spec.rb lib/request_log_analyzer/line_definition.rb spec/unit/tracker/frequency_tracker_spec.rb spec/fixtures/multiple_files_2.log spec/lib/mocks.rb spec/unit/file_format/apache_format_spec.rb spec/fixtures/syslog_1x.log spec/integration/munin_plugins_rails_spec.rb spec/lib/helpers.rb spec/fixtures/rails.db spec/unit/source/log_parser_spec.rb lib/request_log_analyzer/aggregator/database_inserter.rb spec/fixtures/header_and_footer.log spec/lib/testing_format.rb lib/request_log_analyzer/database.rb spec/unit/file_format/rails_format_spec.rb lib/request_log_analyzer/request.rb lib/request_log_analyzer/output/fixed_width.rb spec/integration/command_line_usage_spec.rb lib/request_log_analyzer/file_format/rack.rb spec/fixtures/test_language_combined.log lib/cli/command_line_arguments.rb lib/request_log_analyzer.rb spec/database.yml spec/unit/request_spec.rb lib/request_log_analyzer/database/base.rb spec/unit/aggregator/database_inserter_spec.rb lib/request_log_analyzer/database/request.rb lib/cli/database_console_init.rb lib/cli/progressbar.rb lib/request_log_analyzer/database/warning.rb spec/unit/filter/anonymize_filter_spec.rb spec/fixtures/apache_combined.log spec/fixtures/rails_22_cached.log lib/request_log_analyzer/aggregator/summarizer.rb spec/unit/tracker/duration_tracker_spec.rb spec/fixtures/rails_1x.log lib/request_log_analyzer/tracker/count.rb lib/request_log_analyzer/output.rb spec/unit/file_format/line_definition_spec.rb lib/request_log_analyzer/file_format/mysql.rb spec/unit/file_format/mysql_format_spec.rb request-log-analyzer.gemspec spec/fixtures/apache_common.log lib/request_log_analyzer/file_format/rails.rb Rakefile spec/unit/mailer_spec.rb lib/request_log_analyzer/tracker/hourly_spread.rb spec/unit/aggregator/summarizer_spec.rb spec/unit/tracker/traffic_tracker_spec.rb lib/request_log_analyzer/tracker/timespan.rb spec/unit/controller/log_processor_spec.rb spec/unit/filter/field_filter_spec.rb spec/fixtures/merb_prefixed.log lib/request_log_analyzer/log_processor.rb lib/request_log_analyzer/filter/timespan.rb spec/unit/controller/controller_spec.rb lib/request_log_analyzer/mailer.rb lib/cli/tools.rb spec/fixtures/decompression.tar.gz spec/unit/tracker/timespan_tracker_spec.rb spec/lib/matchers.rb lib/request_log_analyzer/controller.rb spec/unit/tracker/tracker_api_spec.rb lib/request_log_analyzer/source/database_loader.rb spec/fixtures/merb.log LICENSE lib/request_log_analyzer/file_format.rb tasks/request_log_analyzer.rake spec/unit/database/database_spec.rb spec/fixtures/decompression.log.zip spec/fixtures/decompression.tgz bin/request-log-analyzer lib/request_log_analyzer/tracker.rb lib/request_log_analyzer/source.rb spec/fixtures/mysql_slow_query.log lib/request_log_analyzer/source/log_parser.rb lib/request_log_analyzer/aggregator/echo.rb)
  s.test_files = %w(spec/unit/tracker/hourly_spread_spec.rb spec/unit/file_format/amazon_s3_format_spec.rb spec/unit/database/base_class_spec.rb spec/unit/filter/filter_spec.rb spec/unit/tracker/count_tracker_spec.rb spec/unit/database/connection_spec.rb spec/integration/scout_spec.rb spec/unit/file_format/merb_format_spec.rb spec/unit/file_format/format_autodetection_spec.rb spec/unit/filter/timespan_filter_spec.rb spec/unit/file_format/file_format_api_spec.rb spec/integration/mailer_spec.rb spec/unit/tracker/frequency_tracker_spec.rb spec/unit/file_format/apache_format_spec.rb spec/integration/munin_plugins_rails_spec.rb spec/unit/source/log_parser_spec.rb spec/unit/file_format/rails_format_spec.rb spec/integration/command_line_usage_spec.rb spec/unit/request_spec.rb spec/unit/aggregator/database_inserter_spec.rb spec/unit/filter/anonymize_filter_spec.rb spec/unit/tracker/duration_tracker_spec.rb spec/unit/file_format/line_definition_spec.rb spec/unit/file_format/mysql_format_spec.rb spec/unit/mailer_spec.rb spec/unit/aggregator/summarizer_spec.rb spec/unit/tracker/traffic_tracker_spec.rb spec/unit/controller/log_processor_spec.rb spec/unit/filter/field_filter_spec.rb spec/unit/controller/controller_spec.rb spec/unit/tracker/timespan_tracker_spec.rb spec/unit/tracker/tracker_api_spec.rb spec/unit/database/database_spec.rb)
end