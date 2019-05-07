<app>
	<!-- Login page -->
	<div class="wrapper">
	<form class="form-signin">
			<h2 class="form-signin-heading">Story of Your Song</h2>
			<input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
			<input type="password" class="form-control" name="password" placeholder="Password" required=""/>
			<label class="checkbox">
					<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
			</label>
			<div show={menuState==='login'}>
					<button class="btn btn-lg btn-primary btn-block" type="submit" onclick={ login }>Login</button>
			</div>
	</form>
</div>

	<!-- dashboard page -->
	<div show={menuState==='dashboard'}>
		<!-- Left side profile section -->
		<div>
			<span if={ user } class="navbar-text mr-3">{ user.displayName }</span>
		</div>
		<!-- left side section -->
		<div>
			<button type="button" value='home' onclick={ toggleHome }>Home</button>
			<button type="button" onclick={ toggleBrowse }>Browse</button>
			<button type="button" onclick={ toggleMyStories }>My stories</button>
			<button type="button" onclick={ toggleLikedStories }>Liked stories</button>
			<createStory user={ user }></createStory>
		</div>
		<!-- Right side section -->
		<div>
			<div show={subMenuState==='Home'}>
				<home></home>
			</div>
			<div show={subMenuState==='Browse'}>
				<browse></browse>
			</div>
			<div show={subMenuState==='myStories'}>
				<mystories user={user}></mystories>
			</div>
			<div show={subMenuState==='likedStories'}>
				<likedstories></likedstories>
			</div>
		</div>
	</div>

	<script>
		// JAVASCRIPT
		var tag = this;
		console.log('app.tag');
		var userRef = database.collection('user');
		this.menuState = 'login';
		this.subMenuState = 'Home';


		firebase.auth().onAuthStateChanged(userObj => {
			if (userObj) {
				this.user = userObj;
				let userId = this.user.uid
				observer.trigger('userLogin',userId)
			} else {
				this.user = null;
			}
			this.update();
		});

		login() {
			var provider = new firebase.auth.GoogleAuthProvider();
			firebase.auth().signInWithPopup(provider);
		}
		toggleHome() {
			this.subMenuState = 'Home';
		}
		toggleBrowse() {
			this.subMenuState = 'Browse';
		}
		toggleMyStories() {
			this.subMenuState = 'myStories';
		}
		toggleLikedStories() {
			this.subMenuState = 'likedStories';
		}

// 		//observer if user logged in
// 		observer.on('userLogin', userId => {
// 			userRef.doc(userId).get().then(doc=>{
// 				if (!doc.exists){
// 					var newUserRef = userRef.doc(userId);
// 					newUserRef.collection('myStory').add({
// 						message:''
// 					})
// 					newUserRef.set({
// 						id:userId,
// 						name: tag.user.displayName
// 					});
// 				}
// 			});
// });
	</script>

</app>
