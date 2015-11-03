# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151028234122) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "surname",    limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_category_translations", force: :cascade do |t|
    t.integer  "product_category_id", limit: 4,     null: false
    t.string   "locale",              limit: 255,   null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "title",               limit: 255
    t.text     "description",         limit: 65535
  end

  add_index "product_category_translations", ["locale"], name: "index_product_category_translations_on_locale", using: :btree
  add_index "product_category_translations", ["product_category_id"], name: "index_product_category_translations_on_product_category_id", using: :btree

  create_table "product_picture_translations", force: :cascade do |t|
    t.integer  "product_picture_id", limit: 4,   null: false
    t.string   "locale",             limit: 255, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "title",              limit: 255
  end

  add_index "product_picture_translations", ["locale"], name: "index_product_picture_translations_on_locale", using: :btree
  add_index "product_picture_translations", ["product_picture_id"], name: "index_product_picture_translations_on_product_picture_id", using: :btree

  create_table "product_pictures", force: :cascade do |t|
    t.boolean  "is_display"
    t.integer  "product_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  add_index "product_pictures", ["product_id"], name: "index_product_pictures_on_product_id", using: :btree

  create_table "product_translations", force: :cascade do |t|
    t.integer  "product_id",  limit: 4,     null: false
    t.string   "locale",      limit: 255,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",       limit: 255
    t.text     "lead",        limit: 65535
    t.text     "description", limit: 65535
    t.text     "features",    limit: 65535
  end

  add_index "product_translations", ["locale"], name: "index_product_translations_on_locale", using: :btree
  add_index "product_translations", ["product_id"], name: "index_product_translations_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.boolean  "is_display"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "product_category_id", limit: 4
  end

  create_table "slider_translations", force: :cascade do |t|
    t.integer  "slider_id",  limit: 4,     null: false
    t.string   "locale",     limit: 255,   null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "title",      limit: 255
    t.text     "lead",       limit: 65535
    t.string   "link",       limit: 255
  end

  add_index "slider_translations", ["locale"], name: "index_slider_translations_on_locale", using: :btree
  add_index "slider_translations", ["slider_id"], name: "index_slider_translations_on_slider_id", using: :btree

  create_table "sliders", force: :cascade do |t|
    t.boolean  "is_displayed"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "static_page_translations", force: :cascade do |t|
    t.integer  "static_page_id", limit: 4,     null: false
    t.string   "locale",         limit: 255,   null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "title",          limit: 255
    t.text     "content",        limit: 65535
    t.text     "lead",           limit: 65535
  end

  add_index "static_page_translations", ["locale"], name: "index_static_page_translations_on_locale", using: :btree
  add_index "static_page_translations", ["static_page_id"], name: "index_static_page_translations_on_static_page_id", using: :btree

  create_table "static_pages", force: :cascade do |t|
    t.boolean  "is_display"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "code",       limit: 4
  end

  create_table "team_translations", force: :cascade do |t|
    t.integer  "team_id",     limit: 4,     null: false
    t.string   "locale",      limit: 255,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "position",    limit: 255
    t.text     "description", limit: 65535
  end

  add_index "team_translations", ["locale"], name: "index_team_translations_on_locale", using: :btree
  add_index "team_translations", ["team_id"], name: "index_team_translations_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "firstname",           limit: 255
    t.string   "surname",             limit: 255
    t.string   "fb_link",             limit: 255
    t.string   "twitter_link",        limit: 255
    t.string   "google_link",         limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "product_pictures", "products"
end
