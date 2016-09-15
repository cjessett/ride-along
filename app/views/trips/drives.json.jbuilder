json.array! @drives do |drive|

  json.id drive.id
  json.departure drive.departure_time.iso8601
  json.arrival drive.arrival_time.iso8601

  json.riders do
    json.array! drive.riders do |rider|
      json.id rider.id
      json.name rider.name
      json.email rider.email
    end
  end

  json.requests do
    json.array! drive.pending_requests do |request|
      json.id request.id
      json.name request.user.name
      json.email request.user.email
    end
  end
end
