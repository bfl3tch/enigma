module Date

  def todays_date
    Date.today.strftime("%d%m%y")
  end

  def date_used(date)
    date ||= todays_date
  end
end
