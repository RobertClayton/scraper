module ApplicationHelper
  Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }
end
