class DropWebScrapers < ActiveRecord::Migration[5.2]
  def change
    drop_table :web_scrapers
  end
end
