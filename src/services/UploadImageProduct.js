export default class UploadImageProduct {
  moveFile(file, id_product) {
      return new Promise((resolve, reject) => {
          const regex = /[^a-z0-9_\.]/i;
          let baseName = file.name.replace(regex,'_').replace('__','_').replace('..','_');
          let uploadPath = process.env.DIR_IMG_PRODUCT+id_product+'/'+baseName;
          file.mv(uploadPath, (err) => resolve(uploadPath));
      });
  }
}
