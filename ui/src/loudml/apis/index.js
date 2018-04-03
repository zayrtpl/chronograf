import AJAX from 'src/utils/ajax'

export const getModels = async () => {
  try {
    console.error('gm')
    return await AJAX({
      method: 'GET',
      url: '/loudml/api/models',
    })
  } catch (error) {
    console.error(error)
    throw error
  }
}
