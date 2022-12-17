<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Playlist</title>
</head>
<body>

<h1>Add New Song</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Artist:</td><td><input type="text" name="artist"/></td></tr>
        <tr><td>Album:</td><td><input type="text" name="album"/></td></tr>
        <tr><td>Album Photo:</td><td><input type="file" name="img"/></td></tr>
        <tr><td>Release Date:</td><td><input type="date" name="reldate"/></td></tr>
        <tr><td>Genre:</td><td><select name="genre">
            <option value="Classic Soul">Classic Soul</option>
            <option value="Funk Pop">Funk Pop</option>
            <option value="Dance Pop">Dance Pop</option>
            <option value="R&B/Soul">R&B/Soul</option>
            <option value="Alternative Rock">Alternative Rock</option>
            <option value="Hip-Hop/Rap">Hip-Hop/Rap</option>
            <option value="Pop">Pop</option>
            <option value="Ballad">Ballad</option>
            <option value="CCM">CCM</option>
        </select></td></tr>
        <tr><td>Lyrics:</td><td><textarea cols="50" rows="5" name="lyric"></textarea></td></tr>
        <tr><td>Duration:</td><td><input type="text" name="duration"/></td></tr>
        <tr><td>Status:</td><td>public:<input type="radio" name="status" value="public"/>
            private:<input type="radio" name="status" value="private"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">View List</button>
    <button type="submit">Submit</button>
</form>
</body>
</html>