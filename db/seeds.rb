# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chapter = Chapter.create(:name => "Chapter 1", :number => "1")

1.upto(4) do |i|
   chapter.panels << Panel.create(:name => "Panel xl#{i}", :number => "#{i}", :kind => "xl", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel l#{i}", :number => "#{i}", :kind => "l", :chapter => chapter)
end

first_panel = chapter.panels.first
second_panel = chapter.panels[1]
third_panel = chapter.panels[2]

first_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "http://localhost:4200/assets/img/sea2.jpg",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "fast_forward",
  :panel => first_panel,
  :num_of_frames => 3
)

first_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "http://localhost:4200/assets/img/boat2.png",
  :style_class => "comic-panel__layer--at-sea",
  :layer_kind => "forward",
  :panel => second_panel,
  :num_of_frames => 5
)
