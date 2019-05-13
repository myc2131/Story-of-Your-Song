<myStories>
  <h1>My Stories</h1>
  <hr>
  <div class="row">
  <div each = {story in myStories}>
    <div class="col-3">
    <story story={story}></story>
    </div>
  </div>
  </div>

<script>
var tag = this;
this.user = opts.user;
var userRef = database.collection('user');
//this.myStories = [];
console.log('myStories.tag');

//Read my stories and sequence them by timestamp
this.on('update', () => {
  this.user = opts.user;
  userRef.doc(this.user.uid).collection('myStory').orderBy('timestamp','desc').get().then(snapshot => {
  this.myStories = [];
  snapshot.forEach(doc =>{
    let myStory = doc.data();
    this.myStories.push(myStory);
  });
  //.update();
});
});

// this.on('mount', () => {
// database.collection('story').orderBy('timestamp','desc').limit(4).get().then(snapshot => {
//     this.myNewStories = [];
//     snapshot.forEach(doc => {
//       let newStory = doc.data();
//       this.myNewStories.push(newStory);
//     });
//     this.update();
// });
// });

</script>

</myStories>
