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
end
