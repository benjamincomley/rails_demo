Given(/^I visit "([^"]*)" article's page$/) do |article_title|
  article = Article.where(title: article_title).first
  visit article_path(article)
end
