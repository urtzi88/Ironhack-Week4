module ConcertsHelper

  def today(params)
    params.select { |i| i.date > Date.yesterday && i.date < Date.tomorrow }
  end

  def this_month(params)
    params.select { |i| i.date > Date.today && i.date < Date.tomorrow + 1.month }
  end

  def all_from_next_month(params)
    params.select { |i| i.date > Date.today + 1.month }
  end

  def missed(params)
    params.select { |i| i.date < Date.today }
  end

end
