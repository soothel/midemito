json.extract! skill_detail, :id, :name, :skill_id, :ratio, :created_at, :updated_at
json.url skill_detail_url(skill_detail, format: :json)
