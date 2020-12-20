<%@ include file="../header.jsp" %>
    
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Bootstrap Basic Tables</h5>
                                            <p class="m-b-0">Lorem Ipsum is simply dummy text of the printing</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.html"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Bootstrap Tables</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Basic Tables</a>
                                            </li>
                                        </ul>
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
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>JSP > ${lang }</h5>
                                            </div>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th width="10%">#</th>
                                                                <th width="55%">제목</th>
                                                                <th width="25%">작성자</th>
                                                                <th width="10%">솔루션</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        	<c:forEach var="list" items="${boardList }">
                                                        		<tr>
	                                                                <th scope="row">${list.no }</th>
	                                                                <td class="boardTitle" onclick="location.href='/board/boardRead.do?no=${list.no}'">${list.title }</td>
	                                                                <td>${list.name }</td>
	                                                                <td>??</td>
	                                                            </tr>
                                                        	</c:forEach>
                                                        </tbody>
                                                        <tfoot>
                                                        	<tr class="none">
                                                        		<td colspan="4">
	                                                        		<div align="right">
	                                                        			<button class="btn btn-primary btn-md waves-effect waves-light" onclick="location.href='/board/boardWrite.do?lang=${lang }'">글 작성</button>
	                                                        		</div>
                                                        		</td>
                                                        	</tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

<%@ include file="../footer.jsp" %>
