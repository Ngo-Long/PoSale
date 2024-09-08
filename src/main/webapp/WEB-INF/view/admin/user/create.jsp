<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <div class="modal fade" id="modal-xl">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Thêm mới nhân viên</h4>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <form:form method="post" action="/admin/user/create" modelAttribute="newUser"
                                enctype="multipart/form-data">
                                <div class="card-body row gx-5">
                                    <div class="col-2">
                                        <label for="avatarFile" class="form-label">Hình ảnh</label>

                                        <input class="form-control" type="file" id="avatarFile"
                                            accept=".png, .jpg, .jpeg" name="avatarNameFile" placeholder="" />

                                        <img style="max-height: 250px; display: none;" alt="avatar preview"
                                            id="avatarPreview" />
                                    </div>

                                    <div class="col-10">
                                        <div class="row g-5">
                                            <div class="form-group col-sm-6 row">
                                                <label class="col-sm-3 col-form-label" for="fullName">Họ
                                                    tên:</label>
                                                <div class="col-sm-9">
                                                    <form:input type="text"
                                                        class="form-control form-control-border border-width-2"
                                                        id="fullName" path="fullName" placeholder="Nhập đầy đủ tên" />
                                                </div>
                                            </div>

                                            <div class="form-group col-sm-6 row">
                                                <label class="col-sm-3 col-form-label" for="email">Email:</label>
                                                <div class="col-sm-9">
                                                    <form:input type="email" id="email" path="email"
                                                        class="form-control form-control-border border-width-2"
                                                        placeholder="Nhập email" />
                                                </div>
                                            </div>

                                            <div class="form-group col-sm-6 row">
                                                <label class="col-sm-3 col-form-label" for="phone">Số điện
                                                    thoại:</label>
                                                <div class="col-sm-9">
                                                    <form:input type="text" id="phone" path="phone"
                                                        class="form-control form-control-border border-width-2"
                                                        placeholder="Nhập số điện thoại" />
                                                </div>
                                            </div>

                                            <div class="form-group col-sm-6 row">
                                                <label class="col-sm-3 col-form-label" for="password">Mật
                                                    khẩu:</label>
                                                <div class="col-sm-9">
                                                    <form:input type="password" id="password" path="password"
                                                        class="form-control form-control-border border-width-2"
                                                        placeholder="Nhập mật khẩu" />
                                                </div>
                                            </div>

                                            <div class="form-group col-sm-6 row">
                                                <label class="col-sm-3 col-form-label">Chức vụ:</label>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Bỏ
                                        qua</button>
                                    <button type="submit" class="btn btn-primary">Thực hiện</button>
                                </div>
                            </form:form>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>