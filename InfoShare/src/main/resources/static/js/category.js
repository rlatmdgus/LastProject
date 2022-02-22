/**
 * 
 */
$(document).ready(function(){
	var category;
  SU('.LocalCatBtnSU', '.tooltip-right');
  BS('.LocalCatBtnBS', '.tooltip-right');
  DG('.LocalCatBtnDG', '.tooltip-right');
  IC('.LocalCatBtnIC', '.tooltip-right');
  GJ('.LocalCatBtnGJ', '.tooltip-right');
  DJ('.LocalCatBtnDJ', '.tooltip-right');
  US('.LocalCatBtnUS', '.tooltip-right');
  SJ('.LocalCatBtnSJ', '.tooltip-right');
  GG('.LocalCatBtnGG', '.tooltip-right');
  GW('.LocalCatBtnGW', '.tooltip-right');
  CB('.LocalCatBtnCB', '.tooltip-right');
  CN('.LocalCatBtnCN', '.tooltip-right');
  GB('.LocalCatBtnGB', '.tooltip-right');
  GN('.LocalCatBtnGN', '.tooltip-right');
  JB('.LocalCatBtnJB', '.tooltip-right');
  JN('.LocalCatBtnJN', '.tooltip-right');
  JJ('.LocalCatBtnJJ', '.tooltip-right');
});

function SU(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function SU() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $('.LocalCatBtnBS').css("background-color","#fff");
      $('.LocalCatBtnBS').css("color","#333");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  SU();
}

function BS(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function BS() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  BS();
}

function DG(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function DG() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출--
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  DG();
}

function IC(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function IC() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  IC();
}

function GJ(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function GJ() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  GJ();
}

function DJ(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function DJ() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  DJ();
}

function US(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function US() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  US();
}

function SJ(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function SJ() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  SJ();
}

function GG(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function GG() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  GG();
}

function GW(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function GW() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  GW();
}

function CB(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function CB() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  CB();
}

function CN(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function CN() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  CN();
}

function GB(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function GB() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  GB();
}

function GN(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function GN() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  GN();
}

function JB(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function JB() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  JB();
}

function JN(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function JN() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  JN();
}

function JJ(selector, layer) {
      
  var $layer = $(layer);

  // 툴팁버튼 처리
  $(selector).on('click', function() {
    $layer.toggleClass('on');
  });
  
  function JJ() {
    
    var $this = $(selector);
    
    // 마우스 클릭시 툴팁 레이어 노출
    $this.on('click', function() {
      $(this).next(layer).show(); 
      $this.css("background-color","#ABF2CA");
      $this.css("color","#fff");
    })
    $this.on('click', function() {
      if(!$layer.hasClass('on')) {
          $(this).next(layer).hide();
          $this.css("background-color","#fff");
          $this.css("color","#333");
        }
    })
    $layer.on('mouseleave focusout', function(){
		if(!$layer.css("display","none")) {
			$layer.css("display","none");
		}
		$this.css("background-color","#fff");
        $this.css("color","#333");
	})
  }
  JJ();
}
