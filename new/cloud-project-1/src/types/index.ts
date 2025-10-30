export interface FileUpload {
    fileName: string;
    fileSize: number;
    fileType: string;
}

export interface CloudResponse {
    success: boolean;
    message: string;
    data?: any;
}