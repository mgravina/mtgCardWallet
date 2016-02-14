class DataCollectionsView < ActiveRecord::Migration
  def up
    execute <<-SQL
	CREATE OR REPLACE VIEW datacollections AS 
		SELECT users.id,
			magiccards.cardname,
			magicsets.setcode_mcinfo,
			collectionsdetails.language,
			collectionsdetails.foil,
			collectionsdetails.signed,
			collectionsdetails.altered,
			collectionsdetails.amount
		FROM users
			JOIN collections ON users.id = collections.user_id
			JOIN collectionsdetails ON collections.id = collectionsdetails.collection_id
			JOIN magiccards ON collectionsdetails.magiccard_id = magiccards.id
			JOIN magicsets ON magiccards.magicset_id = magicsets.id
			JOIN conditions ON collectionsdetails.condition_id = conditions.id;

    SQL
  end

  def down
    execute "DROP VIEW datacollections"
  end
end
