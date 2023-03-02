package models

import "time"

type Pagination struct {
	Limit  int
	Offset int
}

type User struct {
	ID        int
	FirstName string
	LastName  string
	Email     string
	Password  string
	CreatedAt time.Time
	UpdatedAt time.Time
	Roles     []string
}

func (user *User) HaveOneOfRoles(roles ...string) bool {
	if len(roles) > 0 {
		if len(user.Roles) == 0 {
			return false
		}

		userRoles := make(map[string]bool)
		for _, userRole := range roles {
			userRoles[userRole] = true
		}

		containsRole := false
		for _, role := range user.Roles {
			if _, ok := userRoles[role]; ok {
				containsRole = true
				break
			}
		}

		return containsRole
	}

	return false
}

type Post struct {
	ID        int
	Title     string
	Body      string
	OwnerId   int
	User      *User
	CreatedAt time.Time
	UpdatedAt time.Time
}

type Pwdreset struct {
	ID    int
	Email string
}

type Like struct {
	Post_id   int
	User_id   int
	CreatedAt time.Time
}

const (
	ROLE_ADMIN  = "ADMIN"
	ROLE_EDITOR = "EDITOR"
)

type News struct {
	Link  string `json:"link"`
	Title struct {
		Rendered string `json:"rendered"`
	} `json:"title"`
	Excerpt Excerpt `json:"excerpt"`
}

type Excerpt struct {
	Rendered string `json:"rendered"`
}
