<%@ include file="../header.jsp" %>

<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<script src="/resources/customResources/js/navbar-width.js"></script>

<div class="pcoded-content">
                  <!-- Page-header start -->
                  <div class="page-header">
                     <div class="page-block">
                        <div class="row align-items-center">
                           <div class="col-md-8">
                              <div class="page-header-title">
                                 <h5 class="m-b-10">Dashboard</h5>
                                 <p class="m-b-0">Welcome to Material Able</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- Page-header end -->
                  <div class="pcoded-inner-content">
                     <!-- Main-body start -->
                     <div class="main-body">
                        <div class="page-wrapper">
                           <!-- Page-body start -->
                           <div class="page-body">
                              <div class="row" id="mainContent">
                                 <!-- Material statustic card start -->
                                 <div>
                                    <div class="card" id="cardBox">
                                       <div class="card-header">
                                          <div class="form-inline">
                                             <h5>글작성</h5>
                                          </div>
                                       </div>
                                       
                                       <div class="card-block">
                                          <form class="form-material" method="post" action="/board/boardWriteProc.do">
                                             <input type="hidden" name="lang" value="${lang }">
                                             <div class="form-group form-default">
                                                <input type="text" name="title"
                                                   class="form-control"> <span class="form-bar"></span>
                                                <label class="float-label">제목을 입력해주세요</label>
                                             </div>
                                             <div class="form-group">
                                             	<textarea id="summernote" name="content"></textarea> 
                                             </div>
                                             <input type="button" class="btn btn-primary btn-md waves-effect waves-light" style="width: 100%;" value="글 작성"  onclick="writeValidate(this.form)">
                                          </form>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- Page-body end -->
                        </div>
                        <div id="styleSelector"></div>
                     </div>
                  </div>
               </div>

<script type="text/javascript">
	$('#summernote').summernote({
		placeholder : '이곳에 본문 작성 ',
		tabsize : 2,
		height : 230
	});
	
	function writeValidate(frm) {
		if(frm.title.value == "") {
			alert("제목을 입력해주세요");
			frm.title.focus();
		}
		else if(frm.content.value == "") {
			alert("본문을 입력해주세요");
			frm.content.focus();
		}
		else {
			frm.submit();
		}
	}
</script>

<%@ include file="../footer.jsp" %>