# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chapter = Chapter.create(:name => "Chapter 1", :number => "1")

1.upto(1) do |i|
   chapter.panels << Panel.create(:name => "Panel xl#{i}", :number => "#{i}", :kind => "xl", :description => "something", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel l#{i}", :number => "#{i}", :kind => "l", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
end

chapter.panels << Panel.create(:name => "Panel xl#{6}", :number => "#{6}", :kind => "xl", :chapter => chapter)
chapter.panels << Panel.create(:name => "Panel norm#{7}", :number => "#{7}", :kind => "default", :chapter => chapter)
chapter.panels << Panel.create(:name => "Panel l#{8}", :number => "#{8}", :kind => "l", :chapter => chapter)

1.upto(1) do |i|
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel l#{i}", :number => "#{i}", :kind => "l", :chapter => chapter)
   chapter.panels << Panel.create(:name => "Panel norm#{i}", :number => "#{i}", :kind => "default", :chapter => chapter)
end

first_panel = chapter.panels.first
# TODO: Actually add a description attribute to comic panels
first_panel.description = "There is a person in a thick jacket sitting on a boat on the dark and stormy sea."
first_panel.save

# Setup panel desriptions
second_panel = chapter.panels[1]
second_panel.description = "The boat is rocking, while the waves splash against it."
second_panel.save

third_panel = chapter.panels[2]
third_panel.description = "The waves continue shaking the boat, the person on the boat sitting in it motionless."
third_panel.save

fourth_panel = chapter.panels[3]
fourth_panel.description = "The waves move further."
fourth_panel.save

fifth_panel = chapter.panels[4]
fifth_panel.description = "And further."
fifth_panel.save

sixth_panel = chapter.panels[5]
sixth_panel.description = "The person on the boat is turning over their left shoulder, their face still unrecognizable in the dark and half-covered with the hood of their jacket."
sixth_panel.save

seventh_panel = chapter.panels[6]
seventh_panel.description = "The person starts rowing through the sea, continuing their path backwards through the waves."
seventh_panel.save

eighth_panel = chapter.panels[7]
eighth_panel.description = "Looking at the boat from the back, the golden light of the sun starts glimmering up on the horizon."
eighth_panel.save

ninth_panel = chapter.panels[8]
ninth_panel.description = "The water stream gains traction with bubbles floating up in the water."
ninth_panel.save

tenth_panel = chapter.panels[9]
tenth_panel.description = "The water stream is getting stronger with waves emerging at the surface."
tenth_panel.save

elenth_panel = chapter.panels[10]
elenth_panel.description = "A big wave rocks the boat"
elenth_panel.save

twelth_panel = chapter.panels[11]
twelth_panel.description = "A large wave suddenly overthrows the boat which floats upright in the water now."
twelth_panel.save

# Setup panel descriptions

first_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boatshot.png",
  :style_class => "comic-panel__layer--brighten",
  :layer_kind => "still",
  :panel => first_panel,
  :num_of_frames => 1,
)

seventh_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/sea2.jpg?v=1.0",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "forward",
  :panel => seventh_panel,
  :num_of_frames => 4
)

seventh_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boat2.png",
  :style_class => "comic-panel__layer--at-sea",
  :layer_kind => "fast-forward",
  :panel => seventh_panel,
  :num_of_frames => 5
)

second_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boatshot.png",
  :style_class => "",
  :layer_kind => "still",
  :panel => second_panel,
  :num_of_frames => 1
)
# Text Panel Overlays
second_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default right bottom light emotive",
  :text => "Swoooooosh",
  :size => "large",
  :layer_kind => "text",
  :panel => second_panel,
  :num_of_frames => 1
)

# Text Panel Overlays
second_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default center light",
  :text => "Splash",
  :size => "small",
  :layer_kind => "text",
  :panel => second_panel,
  :num_of_frames => 1
)

third_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boatshot2.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => third_panel,
  :num_of_frames => 1
)

fifth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boatshot2.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => sixth_panel,
  :num_of_frames => 1
)

fourth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boatshot3.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => fourth_panel,
  :num_of_frames => 1
)

sixth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/turnboat-sprite.jpg",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "forward-once",
  :panel => sixth_panel,
  :num_of_frames => 3
)

eighth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/boatshot_back.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => eighth_panel,
  :num_of_frames => 1
)

ninth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/water-sprite.jpg",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "forward",
  :panel => ninth_panel,
  :num_of_frames => 3
)

ninth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/bubbles-sprite.png",
  :style_class => "comic-panel__layer--the-sea",
  :layer_kind => "forward",
  :panel => ninth_panel,
  :num_of_frames => 3
)

sixth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-bubble center ur",
  :text => "Which way?",
  :size => "small",
  :layer_kind => "text",
  :panel => sixth_panel,
  :num_of_frames => 1,
)

ninth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default center up light",
  :text => "brrbl",
  :size => "small",
  :layer_kind => "text",
  :panel => ninth_panel,
  :num_of_frames => 1
)

ninth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default left light emotive",
  :text => "blubb",
  :size => "",
  :layer_kind => "text",
  :panel => ninth_panel,
  :num_of_frames => 1
)

ninth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default bottom right",
  :text => "blubb",
  :size => "large",
  :layer_kind => "text",
  :panel => ninth_panel,
  :num_of_frames => 1
)

tenth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/c1-10-a.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => tenth_panel,
  :num_of_frames => 1
)

elenth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/c1-11-a.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => tenth_panel,
  :num_of_frames => 1
)

elenth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default left vcenter light large emotive",
  :text => "Splaaaaash",
  :size => "",
  :layer_kind => "text",
  :panel => elenth_panel,
  :num_of_frames => 1
)

elenth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-bubble center br",
  :text => "Noooo!",
  :size => "",
  :layer_kind => "text",
  :panel => elenth_panel,
  :num_of_frames => 1
)

twelth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "assets/img/c1-12-a.jpg",
  :style_class => "",
  :layer_kind => "still",
  :panel => tenth_panel,
  :num_of_frames => 1
)

twelth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default right bottom emotive",
  :text => "Pffssshhh",
  :size => "",
  :layer_kind => "text",
  :panel => twelth_panel,
  :num_of_frames => 1
)

twelth_panel.layers << Layer.create(
  :fg_img => "",
  :bg_img => "",
  :style_class => "comic-panel__layer--text-default left bottom light emotive",
  :text => "Splaasssh",
  :size => "",
  :layer_kind => "text",
  :panel => twelth_panel,
  :num_of_frames => 1
)
