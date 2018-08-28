class CreateGraduations < ActiveRecord::Migration[5.0]
  def change
    create_table :graduations do |t|
      
      t.belongs_to :user, foreign_key: true
      
      t.boolean :f1
      t.boolean :f2
      t.boolean :f3
      t.boolean :f4
      t.boolean :f5
      t.boolean :f6
      t.boolean :f7
      t.boolean :f8
      t.boolean :f9
      t.boolean :f10
      t.boolean :f11
      t.boolean :f12
      t.boolean :f13
      t.boolean :f14
      t.boolean :f15
      t.boolean :f16
      t.boolean :f17
      t.boolean :f18
      t.boolean :f19
      t.boolean :f20
      t.boolean :s1
      t.boolean :s2
      t.boolean :s3
      t.boolean :s4
      t.boolean :s5
      t.boolean :s6
      t.boolean :s7
      t.boolean :s8
      t.boolean :s9
      t.boolean :s10
      t.boolean :s11
      t.boolean :s12
      t.boolean :s13
      t.boolean :s14
      t.boolean :s15
      t.boolean :s16
      t.boolean :s17
      t.boolean :s18
      t.boolean :s19
      t.boolean :s20
      t.boolean :c1
      t.boolean :c2
      t.boolean :c3
      t.boolean :c4
      t.boolean :c5
      t.boolean :c6
      t.boolean :c7
      t.boolean :c8
      t.boolean :c9
      t.boolean :c10
      
      t.timestamps
    end
  end
end
