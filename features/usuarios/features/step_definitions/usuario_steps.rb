Dado /^que o usuario "(.*?)" existe$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Dado /^que eu informei o login "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Dado /^que "(.*?)" esta logado$/ do |arg1|
  step "que o usuario #{arg1} existe"
  step "que eu informei o login #{arg1}"
end
