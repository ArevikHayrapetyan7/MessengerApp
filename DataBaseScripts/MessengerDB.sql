
CREATE TABLE   USERS (
    status VARCHAR(20) NOT NULL,
    username VARCHAR(20) NOT NULL,
    groupid VARCHAR(20),
    PRIMARY KEY(username),
    FOREIGN KEY (groupid) 
    REFERENCES GROUPS (name)
);
CREATE TABLE  GROUPS (
    name VARCHAR(20) NOT NULL,
    PRIMARY KEY(name)
); 
CREATE TABLE  MESSAGES (
    id INTEGER NOT NULL,
    content VARCHAR(500) NOT NULL,
    time datetime NOT NULL,
    senderid VARCHAR(20) NOT NULL,
    recieverid VARCHAR(20) NOT NULL,
    groupid VARCHAR(20),
    PRIMARY KEY(id),
    FOREIGN KEY(senderid) REFERENCES USERS (username),
	FOREIGN KEY(recieverid) REFERENCES USERS (username),
    FOREIGN KEY(groupid) REFERENCES GROUPS (name)
)  