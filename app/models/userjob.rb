class Userjob < ApplicationRecord
  belongs_to :job
  belongs_to :user
  def self.available(user_id)
    Userjob.find_by_sql(["
    SELECT uj.status, uj.id, uj.created_at, uj.updated_at, uj.job_id, uj.user_id, j.job_name, j.user_id AS created_by, j.salary, j.description, j.remote, j.location, u.email
    FROM userjobs AS uj
    LEFT JOIN jobs AS j ON job_id = j.id
    LEFT JOIN users AS u ON j.user_id = u.id
    WHERE (uj.user_id)= ?", user_id])
  end
end