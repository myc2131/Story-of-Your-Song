<story>

  <div class="card" style="width: 18rem;">
    <img src={youtubeLink} class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">{song}</h5>
      <div>#{type}</div>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary" data-toggle="modal" data-target={dataTarget} class="text-center">Read</a>
    </div>
  </div>

  <!-- Modal -->
<div class="modal fade" id={id} tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <iframe id="player" type="text/html" width="465" height="220"
        src= {videoLink}
        frameborder="0"></iframe>
        <hr>
        <div>
          <h4>Story</h4>
          {message}
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

  <script>
    var tag = this;
    console.log('story.tag');
    this.story = this.opts.story
    this.youtubeLink = 'https://img.youtube.com/vi/' + this.story.YouTubeID + '/0.jpg'
    this.song = this.opts.story.songName
    this.type = this.opts.story.type
    this.title = this.opts.story.id
    this.id = this.opts.story.id
    this.dataTarget = "#" +  this.opts.story.id
    this.videoLink = 'https://www.youtube.com/embed/' + this.story.YouTubeID
    this.message = this.story.message


  </script>

  <style></style>
</story>

<read-story>

</read-story>
