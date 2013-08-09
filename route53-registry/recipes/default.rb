include_recipe "route53"

route53_record "create a record" do
  name  node[:route53_registry][:record]
  value node[:opsworks][:instance][:private_ip]
  type  "A"

  zone_id               node[:route53_registry][:zone_id]
  aws_access_key_id     node[:route53_registry][:aws_access_key_id]
  aws_secret_access_key node[:route53_registry][:aws_secret_access_key]

  action :create
end
