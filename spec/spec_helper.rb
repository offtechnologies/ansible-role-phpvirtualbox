require 'serverspec'
require 'yaml'

set :backend, :exec

INSIDE_ROLE=true

vars_files = ["defaults/main.yml"]
playbook_vars = YAML.load_file("tests/test.yml").first["vars"]

if vars_files
  ansible_vars = {}
  vars_files.each do |file|
    tmp_vars = YAML.load_file(file)
    tmp_vars.each do |k, v|
      next unless v.is_a?(String)
      v.gsub!(/{{(.+)}}/, "#{tmp_vars[$1]}")
    end
    ansible_vars.merge!(tmp_vars)
  end
  ansible_vars.merge!(playbook_vars)
end

ANSIBLE_VARS = ansible_vars
