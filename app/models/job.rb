class Job < ApplicationRecord
  belongs_to :user
  has_many :userjobs
  def self.availableJobs
    Job.find_by_sql('
    SELECT j.id, j.job_name, j.salary, j.description, j.remote, j.user_id AS created_by, u.email, u.name, j.location, j.company, "isfilled"
    FROM jobs as j
    INNER JOIN users AS u ON j.user_id = u.id
    WHERE "isfilled" <> TRUE;')
  end

  def self.postedJobs(user_id)
    Job.find_by_sql(["SELECT * 
    FROM jobs as j
    WHERE (j.user_id)= ?", user_id])
  end
  
end
