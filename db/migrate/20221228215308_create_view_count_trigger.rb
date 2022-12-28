class CreateViewCountTrigger < ActiveRecord::Migration[7.0]
  def change
    create_table :view_count_triggers do |t|
      t.timestamps
    end
  end

  def up
    execute <<-SQL
      CREATE TRIGGER update_view_count AFTER INSERT ON coupans FOR EACH ROW
      DO
        UPDATE coupans SET view_count = view_count + 1 WHERE id = NEW.id;
      END;
    SQL
  end

  def down
    execute "DROP TRIGGER update_view_count"
  end
end

