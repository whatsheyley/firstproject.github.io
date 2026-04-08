// 用户注册云函数
// 使用管理员权限直接创建用户，绕过复杂的"两步法"

const cloudbase = require('@cloudbase/node-sdk')

const app = cloudbase.init({
  env: cloudbase.SYMBOL_CURRENT_ENV
})

const auth = app.auth()
const db = app.database()

exports.main = async (event, context) => {
  const { username, password, nickname } = event

  // 参数验证
  if (!username || !password) {
    return {
      success: false,
      message: '用户名和密码不能为空'
    }
  }

  try {
    // 使用管理员 API 创建用户
    const result = await auth.createUser({
      username: username,
      password: password,
      nickname: nickname || username
    })

    console.log('用户创建成功:', result)

    return {
      success: true,
      message: '用户创建成功',
      userId: result.uid
    }
  } catch (err) {
    console.error('用户创建失败:', err)

    return {
      success: false,
      message: err.message || '用户创建失败',
      error: err
    }
  }
}
