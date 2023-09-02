class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories, id: :uuid do |t|
      t.integer :github_id
      t.string :name
      t.string :full_name
      t.string :html_url
      t.string :description
      t.string :url_link
      t.string :git_url
      t.text :readme_content_html
      t.text :readme_content_raw

      t.timestamps
    end
  end
end
