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
      t.boolean :f21
      t.boolean :f22
      t.boolean :f23
      t.boolean :f24
      t.boolean :f25
      t.boolean :f26
      t.boolean :f27
      t.boolean :f28
      t.boolean :f29
      t.boolean :f30
      t.boolean :f31
      t.boolean :f32
      t.boolean :f33
      t.boolean :f34
      t.boolean :f35
      t.boolean :f36
      t.boolean :f37
      t.boolean :f38
      t.boolean :f39
      t.boolean :f40

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
      t.boolean :s21
      t.boolean :s22
      t.boolean :s23
      t.boolean :s24
      t.boolean :s25
      t.boolean :s26
      t.boolean :s27
      t.boolean :s28
      t.boolean :s29
      t.boolean :s30
      t.boolean :s31
      t.boolean :s32
      t.boolean :s33
      t.boolean :s34
      t.boolean :s35
      t.boolean :s36
      t.boolean :s37
      t.boolean :s38
      t.boolean :s39
      t.boolean :s40

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
      t.boolean :c11
      t.boolean :c12
      t.boolean :c13
      t.boolean :c14
      t.boolean :c15
      t.boolean :c16
      t.boolean :c17
      t.boolean :c18
      t.boolean :c19
      t.boolean :c20
      
      t.timestamps
    end
  end
end
