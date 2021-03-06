CKEDITOR.editorConfig = (config) ->
  config.assets_languages = 'en'
  config.assets_plugins = 'image'

  config.extraPlugins = 'embedsemantic,autoembed,image2,wysiwygarea,youtube'
  config.image2_alignClasses = [ 'image-align-left', 'image-align-center', 'image-align-right' ]
  config.image2_disableResizer = true

  config.youtube_responsive = true
  config.youtube_related = false

  config.width = '100%'
  config.height = '500'

  config.skin = 'office2013'


  # Filebrowser routes
  # The location of an external file browser, that should be launched when "Browse Server" button is pressed.
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files"
  # The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Flash dialog.
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files"
  # The location of a script that handles file uploads in the Flash dialog.
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files"
  # The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Link tab of Image dialog.
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures"
  # The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Image dialog.
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures"
  # The location of a script that handles file uploads in the Image dialog.
  config.filebrowserImageUploadUrl = "/ckeditor/pictures"
  # The location of a script that handles file uploads.
  config.filebrowserUploadUrl = "/ckeditor/attachment_files"

  # Rails CSRF token
  config.filebrowserParams = ->
    csrf_token = null
    csrf_param = null
    meta = null
    metas = document.getElementsByTagName("meta")
    params = new Object()
    i = 0
    while i < metas.length
      meta = metas[i]
      switch(meta.name)
        when "csrf-token" then csrf_token = meta.content
        when "csrf-param" then csrf_param = meta.content
        else continue
      i++
    params[csrf_param] = csrf_token  if csrf_param isnt 'undefined' and csrf_token isnt 'undefined'
    params

  config.toolbar = [
    {
      name: 'clipboard'
      items: [
        'Undo'
        'Redo'
      ]
    }
    {
      name: 'basicstyles'
      items: [
        'Bold'
        'Italic'
        'Underline'
        'Strike'
        'Subscript'
        'Superscript'
      ]
    }
    {
      name: 'paragraph'
      items: [
        'NumberedList'
        'BulletedList'
        '-'
        'Outdent'
        'Indent'
        '-'
        'Blockquote'
        '-'
        'JustifyLeft'
        'JustifyCenter'
        'JustifyRight'
        'JustifyBlock'
        '-'
        'BidiLtr'
        'BidiRtl'
        'Language'
      ]
    }
    {
      name: 'links'
      items: [
        'Link'
        'Unlink'
        'Anchor'
      ]
    }
    {
      name: 'insert'
      items: [
        'Image'
        # 'Flash'
        'Iframe'
        'EmbedSemantic'
        'Youtube'
        'Table'
      ]
    }
    {
      name: 'styles'
      items: [
        'Styles'
        'Format'
        'Font'
        'FontSize'
      ]
    }
    {
      name: 'colors'
      items: [
        'TextColor'
        'BGColor'
        '-'
        'Source'
      ]
    }
  ]
  return