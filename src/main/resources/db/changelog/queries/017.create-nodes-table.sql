create table nodes (
    id bigserial primary key,
    title varchar(50) not null,
    description text not null,
    publish_time date not null,
    expiration_time date not null,
    required_people integer default -1,
    age_limit integer not null,
    users_id bigint references users(id),
    sub_categories_id bigint references sub_categories(id)
);