using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;

namespace BTL
{
    public class Json<T>
    {
        private string filePath;

        public Json(string filePath)
        {
            this.filePath = filePath;
        }

        public void SaveToFileJson(List<T> list)
        {
            File.WriteAllText(filePath, JsonConvert.SerializeObject(list, Formatting.Indented));
        }

        public List<T> LoadToList()
        {
            if (File.Exists(filePath))
            {
                return JsonConvert.DeserializeObject<List<T>>(File.ReadAllText(filePath)) ?? new List<T>();
            }
            return new List<T>();
        }
    }
}