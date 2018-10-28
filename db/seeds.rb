# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chapter = Chapter.create(:name => "Chapter 1", :number => "1")

1.upto(100) do |i|
   chapter.panels << Panel.create(:name => "Panel xl#{i}", :number => "#{i}", :kind => "xl", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel l#{i}", :number => "#{i}", :kind => "l", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
end

first_panel = chapter.panels.first
second_panel = chapter.panels[1]
third_panel = chapter.panels[2]
fourth_panel = chapter.panels[3]
fifth_panel = chapter.panels[4]
sixth_panel = chapter.panels[5]
seventh_panel = chapter.panels[6]

first_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/boatshot.png",
  :style_class => "comic-panel__layer--brighten",
  :layer_kind => "still",
  :panel => first_panel,
  :num_of_frames => 1
)

seventh_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/sea2.jpg?v=1.0",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "forward",
  :panel => seventh_panel,
  :num_of_frames => 4
)

seventh_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/boat2.png",
  :style_class => "comic-panel__layer--at-sea",
  :layer_kind => "fast-forward",
  :panel => seventh_panel,
  :num_of_frames => 5
)

second_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/boatshot.png",
  :style_class => "",
  :layer_kind => "still",
  :panel => second_panel,
  :num_of_frames => 1
)

third_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/boatshot2.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => third_panel,
  :num_of_frames => 1
)

fifth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/boatshot2.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => sixth_panel,
  :num_of_frames => 1
)

fourth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/boatshot3.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => fourth_panel,
  :num_of_frames => 1
)

sixth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "/diamanias/assets/img/turnboat-sprite.jpg",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "forward-once",
  :panel => fifth_panel,
  :num_of_frames => 3
)
