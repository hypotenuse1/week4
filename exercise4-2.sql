create table users(
	id int not null auto_increment,
	user_id varchar(12) not null,
    user_pw varchar(12) not null,
    user_nickname varchar(12),
    profile_link varchar(60),
    profile_message varchar(50),
    delete_acc tinyint(1) default 0,
    sign_in_date int(8),
    primary key(id, user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table channels(
	id int not null auto_increment,
	channel_name varchar(12),
    creator int,
    channel_link varchar(60),
    max_ppl int(4),
    delete_channel tinyint(1) default 0,
    channel_date int(8),
    primary key(id),
    foreign key(creator) references users(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table chats(
	id int not null auto_increment,
	context varchar(70),
    writer int,
    channel int,
    chat_date int(8),
    primary key(id),
    foreign key(writer) references users(id),
    foreign key(channel) references channels(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table follows(
	id int not null auto_increment,
    follower int,
    followee int,
    follow_date int(8),
    primary key(id),
    foreign key(follower) references users(id),
    foreign key(followee) references users(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table blocks(
	id int not null auto_increment,
    blocker int,
    blockee int,
    block_date int(8),
    primary key(id),
    foreign key(blocker) references users(id),
    foreign key(blockee) references users(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;