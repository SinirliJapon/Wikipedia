package repository

import (
	"bytes"

	"bitbucket.org/janpavtel/site/internal/models"
)

type DatabaseRepo interface {
	LoadAllUsers() ([]models.User, error)

	LoadUserById(id int) (models.User, error)

	AddUser(user models.User) (int, error)

	UpdateUser(user models.User) error

	UpdatePost(post models.Post) error

	UpdateUserPassword(email string, password string) error

	LoadUserByEmail(email string) (models.User, error)

	AddEntry(logg models.Pwdreset) (int, error)

	GetResetPasswdUser(genId int) (models.Pwdreset, error)

	AddPost(post models.Post) (int, error)

	LoadAllPostsByOwnerID(userId int) ([]models.Post, error)

	LoadAllPosts(limit int, offset int) ([]models.Post, error)

	LoadPostById(id int) (models.Post, error)

	UpdateUserProfilePicture(userID int, fileName string, buffer *bytes.Buffer) error

	LoadProfilePicture(userID int) (*bytes.Buffer, error)
}
