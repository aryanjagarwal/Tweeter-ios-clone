//
//  ProfileView.swift
//  Twitter Clone
//
//  Created by Aryan Jagarwal on 17/09/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButton
            
            userInfo
                
            Spacer()
            
            }
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
    
    extension ProfileView {
        
        var headerView: some View {
            
            ZStack(alignment: .bottomLeading) {
                Color(.systemBlue)
                    .ignoresSafeArea()
                
                VStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .foregroundColor(.white)
                            .offset(x: 16, y: 12)
                    }
                    
                    Circle()
                        .frame(width: 72, height: 72)
                        .offset(x: 16, y: 24)
                }
            }
            .frame(height: 96)
        }
        
        var actionButton: some View {
            
            HStack(spacing: 12) {
                Spacer()
                
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .padding(6)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 0.7))
                
                Button {
                    //
                } label: {
                    Text("Edit Profile")
                        .font(.headline).bold()
                        .frame(width: 120, height:  32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                }
            }
            .padding(.trailing)
        }
        
        var userInfo: some View {
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Tony Stark")
                        .font(.title2).bold()
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Text("@ironman")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("I love You 3000")
                    .font(.subheadline)
                    .padding(.vertical)
                
                HStack(spacing: 24) {
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        
                        Text("New York City, NY")
                    }
                    
                    HStack {
                        Image(systemName: "link")
                        
                        Text("www.ironman.com")
                    }
                }
                .font(.caption)
                .foregroundColor(.gray)
                
                HStack(spacing: 24) {
                    HStack(spacing: 4) {
                        Text("807")
                            .font(.subheadline)
                            .bold()
                        
                        Text("Following")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    HStack(spacing: 4) {
                        Text("6.9M")
                            .font(.subheadline)
                            .bold()
                        
                        Text("Follower")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                
                }
                .padding(.horizontal)
        }
    }
