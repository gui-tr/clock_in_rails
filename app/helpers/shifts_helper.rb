require 'nokogiri'

module ShiftsHelper

  def shift_duration_in_min(time_in, time_out)
    ((time_out - time_in)/60)
  end

  def shift_duration_formatted(minutes)
    min = minutes % 60
    hrs = (minutes - min) / 60
    hrs = format('%02d', hrs)
    min = format('%02d', min)
    "#{hrs}:#{min}"
  end

  # ---- TESTS ----

  # def date_picker_data
   # file = File.read('/Users/guitrionfo/GUITRIONFO/PROG/clock_ins_rails/clock_ins/app/views/shifts/index.html.erb')
   # doc = Nokogiri::HTML(file)

   # doc.css('.daterangepicker .drp-selected').each do |link|
   #   puts link.content
  #  end
  # end

  # ---- END OF TESTS ----

end
