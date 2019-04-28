<createstory>

  <!-- Button trigger modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
    Create
  </button>

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Write something...</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Song of your story</label>
              <textarea type="text" class="form-control" id="song-name"></textarea>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Story of your song</label>
              <textarea class="form-control" id="story-text"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick = {saveStory}>Save changes</button>
        </div>
      </div>
    </div>
  </div>

  <script>
    var tag = this;
    console.log('createStory.tag');

    var songName;
    var storyText;

    saveStory(){
      songName = document.getElementById("song-name").value;
      storyText = document.getElementById("story-text").value;
    }
  </script>
</createstory>
