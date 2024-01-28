package jdbc_p;

import java.util.Date;

public class BoardDTO {
	public BoardDTO() {
		super();
		
	}

	int boardNumber;
	String boardTitle, userId, contents;
	Date writeDate;
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	@Override
	public String toString() {
		return "BoardDTO [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", userId=" + userId
				+ ", writeDate=" + writeDate + "]";
	}
	
	
	
}
