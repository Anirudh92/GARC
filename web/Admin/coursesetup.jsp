<%-- 
    Document   : coursesetup
    Created on : Oct 17, 2014, 12:36:00 AM
    Author     : Ramkumar
--%>

<div class="well">
    <div class="page-header">
        <h5>Garc Users <small>Subjects</small></h5>
    </div>
    <div class="row">
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Year</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Semester</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">No. of sections</span>
                <select class="form-control">
                    <option> - Select -</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-sm-2">
            <div class="input-group">
                <span class="input-group-addon">Number of Electives</span>
                <select class="form-control">
                    <option>0</option>
                </select>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->        
        <div class="col-sm-1">
            <a href="javascript:void(0)"  onclick="updatePassword('${pageContext.request.contextPath}')" class="btn btn-warning  btn-raised" style="margin-top: 0;"> <span class="glyphicon glyphicon-plus"></span> </a>
        </div>
    </div><!-- /.row -->
</div>
        <div class="well">
            <table class="table table-striped table-hover ">
    <thead>
        <tr>
            <th>#</th>
            <th>Column heading</th>
            <th>Column heading</th>
            <th>Column heading</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="info">
            <td>3</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="success">
            <td>4</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="danger">
            <td>5</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="warning">
            <td>6</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
        <tr class="active">
            <td>7</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
        </tr>
    </tbody>
</table>
        </div>