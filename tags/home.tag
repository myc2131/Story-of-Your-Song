<home>
  <!-- stories that are listed based on timestamp -->
  <div>
    <h1>New Stories</h1>
    <hr>
    <div each={story in myNewStories}>
       {story.message}
    </div>
  </div>

  <div>
    <h1>Popular stories</h1>
    <hr>
    <div each={story in popularStories}>
       {story.name}
    </div>

  </div>

  <script>
    var tag = this;
    console.log('home.tag');
    //Read New Stories and order by timestamp

    var storyRef = database.collection('story');

      this.on('mount', () => {
			database.collection('story').orderBy('timestamp','desc').limit(4).get().then(snapshot => {
					console.log('Collection successfully fetched.');
					this.myNewStories = [];
					snapshot.forEach(doc => {
						let newStory = doc.data();
						this.myNewStories.push(newStory);
					});
					this.update();
			});
		});


    //Read most popular stories
    this.popularStories = [
      {name: 2},
      {name: 2},
      {name: 2},
      {name: 2}
    ]

  </script>
</home>
