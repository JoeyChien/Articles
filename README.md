# RESTful API (簡易文章 CRUD 功能)

- 功能

  | 功能 | Method |path |參數 |
  | -------- | -------- | -------- |-------- |
  | 所有文章 | GET  | {DOMAIN}/api/v1/articles |  |
  | 特定文章 | GET  | {DOMAIN}/api/v1/articles/:id |  |
  | 新增文章 | POST  | {DOMAIN}/api/v1/articles | title,content |
  | 修改文章 |  PUT | {DOMAIN}/api/v1/articles/:id | title,content |
  | 刪除文章 | DELETE  | {DOMAIN}/api/v1/articles/:id |  |


- 新增/修改文章參數範例

    ```=json
    {
        "title": "title by postman",
        "content": "content by postman"
    }
    ```
- API 回應範例
    - 新增/修改/讀取成功
        ```=json
        {
            "status": "SUCCESS",
            "message": "Show article",
            "data": {
                "id": 12,
                "title": "title by postman",
                "content": "content by postman",
                "created_at": "2020-12-27T15:34:42.380Z",
                "updated_at": "2020-12-27T15:40:22.167Z"
            }
        }
        ```
    - 無該筆資料
        ```=json
        {
            "status": "ERROR",
            "message": "Article does not exist",
            "data": "null"
        }
        ```
