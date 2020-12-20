<%@ include file="../header.jsp" %>

<script src="/resources/customResources/js/navbar-width.js"></script>

                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Breadcrumb Styles</h5>
                                            <p class="m-b-0">Lorem Ipsum is simply dummy text of the printing</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.html"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Basic Components</a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Breadcrumb</a>
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
                                    <div class="page-body breadcrumb-page">
                                       
                                        <!-- Simple Breadcrumb card start -->
                                        <!-- Caption Breadcrumb card start -->
                                        <div>
                                        <div class="card">
                                            <div class="card-block caption-breadcrumb">
                                                <div class="breadcrumb-header">
                                                    <h3>${boardInfo.title }</h3>
                                                    <span>${boardInfo.name }&nbsp;&nbsp;&nbsp;${boardInfo.date }</span>
                                                </div>
                                                <hr/>
                                                <div id="contentBox">
                                                	${boardInfo.content }
                                                </div>
                                                
                                                <br/>
                                                <div align="right">
                                                	<button class="btn btn-success btn-md waves-effect waves-light" onclick="writeValidate(this.form)">&nbsp;수정&nbsp;</button>
                                                	&nbsp;
                                                	<button class="btn btn-danger btn-md waves-effect waves-light" onclick="writeValidate(this.form)">&nbsp;삭제&nbsp;</button>
                                                </div>
                                            </div>
                                        </div>
                                    	</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

<%@ include file="../footer.jsp" %>
