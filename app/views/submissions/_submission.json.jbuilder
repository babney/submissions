json.extract! submission, :id, :submitted_on, :result, :created_at, :updated_at
json.url submission_url(submission, format: :json)
