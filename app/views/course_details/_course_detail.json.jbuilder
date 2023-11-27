json.extract! course_detail, :id, :name, :course_id, :deleted, :created_at, :updated_at
json.url course_detail_url(course_detail, format: :json)
