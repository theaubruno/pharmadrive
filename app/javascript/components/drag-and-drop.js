/*
* Drop to another list
***************/
function makeTitleDroppable(){
  $('.list-title').droppable({
    drop: function(event, ui){
      console.log($(".ui-sortable-helper"));
      $(".ui-sortable-helper").removeClass('hover');

      console.log('dropped!', $(".ui-sortable-helper").attr('class').split(" ")[1].slice(-1));

      var targetListNum = $(this).attr('class').split(" ")[1].slice(-1);
      var itemOrder = $(".ui-sortable-helper").attr('class').split(" ")[1].slice(-1);
      console.log($(this).attr('class').split(" ")[1].slice(-1));
      console.log(ui);
      // $('.select-list1').trigger( "open" );
      var $target = $(".select-list"+targetListNum);
      var $clone = $target.clone().removeAttr('id');
      $(document).off('change', "select");
      $clone.val(-1).css({
          'font-size': '22px',
          overflow: "auto",
          position: 'absolute',
          'z-index': 999,
          left: $target.offset().left,
          top: $target.offset().top + $target.outerHeight(),
          width: $target.outerWidth()
      }).attr('size', $clone.find('option').length > 10 ? 10 : $clone.find('option').length).change(function() {
        console.log('ui is', ui);
        var uiListNum = ui.draggable.attr('class').split(' ')[2].slice(-1);
        var uiOrderNum = ui.draggable.attr('class').split(' ')[1].slice(-1);
        console.log('ui listNumber is', ui.draggable.attr('class').split(' ')[2].slice(-1));
        console.log('ui order is', ui.draggable.attr('class').split(' ')[1].slice(-1));
        console.log('initdata for ui is', initData[uiListNum].body[uiOrderNum]);
        initData[$clone.val()].body.push(initData[uiListNum].body[uiOrderNum]);
        initData[uiListNum].body.splice(uiOrderNum, 1);
        initData[$clone.val()].body.forEach(function(item,index){
          item.order = index;
        });
        initData[uiListNum].body.forEach(function(item,index){
          item.order = index;
        });
        $('.list-wrapper').remove();
        stateCheck();
        createLists(init);
        updateLocalStorage();
        console.log('data after push', initData);
