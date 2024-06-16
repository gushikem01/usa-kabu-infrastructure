$ terraform import google_cloud_scheduler_job.default projects/{{project}}/locations/{{region}}/jobs/{{name}}
$ terraform import google_cloud_scheduler_job.default {{project}}/{{region}}/{{name}}
$ terraform import google_cloud_scheduler_job.default {{region}}/{{name}}
$ terraform import google_cloud_scheduler_job.default {{name}}
