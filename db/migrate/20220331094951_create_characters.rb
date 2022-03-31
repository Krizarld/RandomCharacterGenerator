class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :race
      t.string :jobclass
      t.string :alignment
      t.string :personality
      t.string :mainquality
      t.string :mainfault
      t.string :haircolor
      t.string :eyescolor
      t.text :signs
      t.text :past
      t.text :dream

      t.timestamps
    end
  end
end
