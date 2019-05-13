<home>
  <!-- stories that are listed based on timestamp -->
  <div>
    <h1>New Stories</h1>
    <hr>
    <div class="row">
    <div each={story in myNewStories}>
      <div class="col-sm-3">
       <story story={story}></story>
       </div>
    </div>
    </div>
  </div>

  <script>
    var tag = this;
    console.log('home.tag');
    //Read New Stories and order by timestamp

    var storyRef = database.collection('story');

      this.on('mount', () => {
			database.collection('story').orderBy('timestamp','desc').get().then(snapshot => {
					this.myNewStories = [];
					snapshot.forEach(doc => {
						let newStory = doc.data();
						this.myNewStories.push(newStory);
					});
					this.update();
			});
		});

  </script>
</home>
