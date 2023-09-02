class Repository < ApplicationRecord
  after_create :fill_readme_content
  after_create :fill_additional_information

  def fill_readme_content
    self.readme_content_html = Octokit::Client.new.readme full_name, accept: 'application/vnd.github.html'
    self.readme_content_raw = Faraday.get("https://raw.githubusercontent.com/#{full_name}/master/README.md").body

    save
  end

  def fill_additional_information
    response_github_api = JSON.parse(Faraday.get("https://api.github.com/repos/#{full_name}").body)

    self.github_id = response_github_api['github_id']
    self.name = response_github_api['name']
    self.html_url = response_github_api['html_url']
    self.url_link = response_github_api['url_link']
    self.git_url = response_github_api['git_url']

    save
  end
end
