json.array! @matches do |match|

  json.id match.id
  json.departure match.departure_time.iso8601
  json.arrival match.arrival_time.iso8601
  json.count match.count

  json.driver do
    json.name match.driver.name
    json.email match.driver.email
    json.rating match.driver.rating
  end

  request = match.requests.where(user_id: @user.id)
  if request.exists?
    json.pending request.pluck(:pending).first
  else
   json.pending false
  end
end
